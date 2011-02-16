#require 'rubygems'

module Rubber
  module Cloud

    class Null < Base

      def initialize(env, capistrano)
      end

      def create_instance(ami, ami_type, security_groups, availability_zone)
        return nil
      end

      def create_spot_instance_request(spot_price, ami, ami_type, security_groups, availability_zone)
        return nil
      end

      def describe_instances(instance_id=nil)
        instances = []
        opts = {}
        opts[:instance_id] = instance_id if instance_id

        return instances
      end

      def destroy_instance(instance_id)
      end

      def reboot_instance(instance_id)
      end

      def stop_instance(instance_id)
      end

      def start_instance(instance_id)
      end

      def describe_availability_zones
        zones = []
        return zones
      end

      def create_security_group(group_name, group_description)
      end

      def describe_security_groups(group_name=nil)
        groups = []
        opts = {}
        opts[:group_name] = group_name if group_name
        return groups
      end

      def add_security_group_rule(group_name, protocol, from_port, to_port, source)
        opts = {:group_name => group_name}
      end

      def remove_security_group_rule(group_name, protocol, from_port, to_port, source)
        opts = {:group_name => group_name}
      end

      def destroy_security_group(group_name)
      end

      def create_static_ip
      end

      def attach_static_ip(ip, instance_id)
      end

      def detach_static_ip(ip)
      end

      def describe_static_ips(ip=nil)
        ips = []
        opts = {}
        opts[:public_ip] = ip if ip
        return ips
      end

      def destroy_static_ip(ip)
      end

      def create_volume(size, zone)
      end

      def attach_volume(volume_id, instance_id, device)
      end

      def detach_volume(volume_id)
      end

      def describe_volumes(volume_id=nil)
        volumes = []
        opts = {}
        opts[:volume_id] = volume_id if volume_id
        return volumes
      end

      def destroy_volume(volume_id)
      end

      def create_image(image_name)
        return nil
      end

      def describe_images(image_id=nil)
        images = []
        opts = {:owner_id => 'self'}
        opts[:image_id] = image_id if image_id
        return images
      end

      def destroy_image(image_id)
        image = describe_images(image_id).first
        raise "Could not find image: #{image_id}, aborting destroy_image" if image.nil?
        image_location = image[:location]
      end

      def destroy_spot_instance_request(request_id)
      end

      def describe_load_balancers(name=nil)
        lbs = []
        opts = {}
        opts[:load_balancer_names] = name if name
        return lbs
      end

      def describe_spot_instance_requests(request_id=nil)
        requests = []
        opts = {}
        opts[:spot_instance_request_id] = request_id if request_id
        return requests
      end

      def create_tags(resource_id, tags)
        # Tags needs to be an array of hashes, not one big hash, so break it down.
        # @ec2.create_tags(:resource_id => resource_id, :tag => tags.collect { |k, v| { k.to_s => v.to_s } })
      end

    end

  end
end
